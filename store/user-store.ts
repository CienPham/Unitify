import { create } from 'zustand';
import { persist, createJSONStorage } from 'zustand/middleware';
import AsyncStorage from '@react-native-async-storage/async-storage';

interface UserState {
  isLoggedIn: boolean;
  username: string | null;
  email: string | null;
  recentConversions: {
    category: string;
    fromUnit: string;
    toUnit: string;
    value: number;
    result: number;
    timestamp: number;
  }[];
  favoriteCategories: string[];
  hasCompletedOnboarding: boolean;
  
  // Actions
  login: (username: string, email: string) => void;
  logout: () => void;
  addRecentConversion: (conversion: {
    category: string;
    fromUnit: string;
    toUnit: string;
    value: number;
    result: number;
  }) => void;
  toggleFavoriteCategory: (category: string) => void;
  setOnboardingComplete: () => void;
}

export const useUserStore = create<UserState>()(
  persist(
    (set) => ({
      isLoggedIn: false,
      username: null,
      email: null,
      recentConversions: [],
      favoriteCategories: [],
      hasCompletedOnboarding: false,
      
      login: (username, email) => set({ 
        isLoggedIn: true, 
        username, 
        email 
      }),
      
      logout: () => set({ 
        isLoggedIn: false, 
        username: null, 
        email: null 
      }),
      
      addRecentConversion: (conversion) => set((state) => {
        const newConversions = [
          {
            ...conversion,
            timestamp: Date.now(),
          },
          ...state.recentConversions,
        ].slice(0, 10); // Keep only the 10 most recent
        
        return { recentConversions: newConversions };
      }),
      
      toggleFavoriteCategory: (category) => set((state) => {
        const isFavorite = state.favoriteCategories.includes(category);
        
        if (isFavorite) {
          return {
            favoriteCategories: state.favoriteCategories.filter(
              (cat) => cat !== category
            ),
          };
        } else {
          return {
            favoriteCategories: [...state.favoriteCategories, category],
          };
        }
      }),
      
      setOnboardingComplete: () => set({ hasCompletedOnboarding: true }),
    }),
    {
      name: 'unitify-user-storage',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
);