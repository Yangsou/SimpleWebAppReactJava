var redux = require('redux');

console.log('Starting redux example');

var stateDefault = {
  name: 'Anonymous',
  hobbies: [],
  movies: []
};

var nameReducer = (state = 'Anonymous', action) => {
  switch (action.type) {
    case 'CHANGE_NAME':
      return action.name
      break;
    default:
      return state;

  }
};
var changeName = (name) => {
  return{
    type: 'CHANGE_NAME',
    name
  }
};
//hobby
var nextHobbyId = 1;
var hobbiesReducer = (state = [], action) => {
  switch (action.type) {
    case 'ADD_HOBBY':
      return [
        ...state,
        {
          id: nextHobbyId++,
          hobby: action.hobby
        }
      ];
      case 'REMOVE_HOBBY':
        return state.filter((hobby) => hobby.id !== action.id);
    default:
      return state;

  }
};
var addHobby = (hobby) => {
  return {
    type: 'ADD_HOBBY',
    hobby
  }
};
var removeHobby = (id) => {
  return {
    type: 'REMOVE_HOBBY',
    id
  }
};
//movies
var nextMovieId = 1;
var moviesReducer = (state = [], action) => {
  switch (action.type) {
    case 'ADD_MOVIE':
      return [
        ...state,
        {
          id: nextMovieId++,
          title: action.title,
          genre: action.genre
        }
      ];
    case 'REMOVE_MOVIE':
      return state.filter((movie) => movie.id !== action.id);
    default:
      return state;

  }
}
var reducer = redux.combineReducers({
  name: nameReducer,
  hobbies: hobbiesReducer,
  movies: moviesReducer
});

var store = redux.createStore(reducer, redux.compose(
  window.devToolsExtension ? window.devToolsExtension() : f => f
));

// Subscribe to changes
var unsubscribe = store.subscribe(() => {
  var state = store.getState();

  console.log('Name is', state.name);
  document.getElementById('app').innerHTML = state.name;

  console.log('New state', store.getState());
});
// unsubscribe();

var currentState = store.getState();
console.log('currentState', currentState);

store.dispatch(changeName('Andrew'));
//
store.dispatch(addHobby('Running'));
//
store.dispatch(addHobby('Walking'));
//
store.dispatch(removeHobby(2));
//
// store.dispatch({
//   type: 'CHANGE_NAME',
//   name: 'Emily'
// });
//
// store.dispatch({
//   type: 'ADD_MOVIE',
//   title: 'Mad Max',
//   genre: 'Action'
// });
//
// store.dispatch({
//   type: 'ADD_MOVIE',
//   title: 'Star Wars',
//   genre: 'Action'
// });
//
// store.dispatch({
//   type: 'REMOVE_MOVIE',
//   id: 1
// });
