import { useEffect, useState, createContext } from "react"
import type { Recipe } from "./components/Recipes"
import React from "react"


interface FavContextType {
    favRecipe: Recipe[]
    setFavRecipe: React.Dispatch<React.SetStateAction<Recipe[]>>
    addToFavorite: (recipe: Recipe) => void,
    removeFromFavorite: (recipe: Recipe) => void,
    setShowAddFavPopUp: (value: boolean) => void,
    setRemoveFavPopUpShow: (value: boolean) => void,
    showAddFavPopUp: boolean,
    removeFavPopUpShow: boolean
}

const FavContext = createContext<FavContextType>({
    favRecipe: [],
    setFavRecipe: () => [],
    addToFavorite: () => { },
    removeFromFavorite: () => { },
    setShowAddFavPopUp: () => { },
    setRemoveFavPopUpShow: () => { },
    showAddFavPopUp: false,
    removeFavPopUpShow: false,
})
const FavContextProvider = ({ children }: { children: React.ReactNode }) => {
    const [favRecipe, setFavRecipe] = useState<Recipe[]>([])
    const [showAddFavPopUp, setShowAddFavPopUp] = useState(false)
    const [removeFavPopUpShow, setRemoveFavPopUpShow] = useState(false)


    function addToFavorite(recipe: Recipe) {
        const newFavRecipe = [...favRecipe, recipe]
        setFavRecipe(newFavRecipe)
        localStorage.setItem("addToFav", JSON.stringify(newFavRecipe))
        setShowAddFavPopUp(true)


    }
    function removeFromFavorite() {
        setRemoveFavPopUpShow(true)

    }
    // Load favorites from localStorage on mount
    useEffect(() => {
        const saved = localStorage.getItem("addToFav")
        if (saved) {
            setFavRecipe(JSON.parse(saved))
        }
    }, [])
    return <FavContext.Provider value={{ favRecipe, setFavRecipe, addToFavorite, removeFromFavorite, setRemoveFavPopUpShow, removeFavPopUpShow, setShowAddFavPopUp, showAddFavPopUp }}>{children}</FavContext.Provider>
}
export { FavContext, FavContextProvider }
