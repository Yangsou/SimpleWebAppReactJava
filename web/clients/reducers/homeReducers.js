const initialState = {
  data: [],
  watches: [],
  user: {},
  order: []
};

const homeReducers = (state = initialState, action) => {
  switch (action.type) {
    case 'ADD_POST':
      return [
        action.post,
        ...state.data
      ];
    case 'ADD_POSTS':
      return{
        data: action.posts
      };
    case 'ADD_WATCHES':
        state.watches = action.watches;
        return {...state}
    case 'ADD_ORDER':
        state.order = [action.order, ...state.order];
        return {...state};
    case 'ADD_ORDERS':
        state.order = action.orders;
        return {...state};
    case 'CHECK_USER_LOGIN':
        state.user = action.user;
        return {...state}
    default:
        return state;
  };
};
//get post
export const getPosts = state => state.home.data;
export const getWatches = state => state.home.watches;
export const getUser = state => state.home.user;
export const getOrder = state => state.home.order;

export default homeReducers;
