const initialState = {
    username: '',
    profilePic: '',
}

const UPDATE_USER = 'UPDATE_USER'
const LOGOUT = 'LOGOUT'


export function updateUser(userObj) {
    return {
        type: UPDATE_USER,
        payload: userObj
    }
}

export function logout() {
    return {
        type: LOGOUT
    }
}

export default function reducer(state = initialState, action) {
    switch (action.type) {
        case UPDATE_USER:
            // reducer.js(src/redux) step 4,5
            return {
                ...state,
                username: action.username,
                profilePic: action.profilePic
            }
        case LOGOUT:
            return initialState
        default:
            return state
    }
}