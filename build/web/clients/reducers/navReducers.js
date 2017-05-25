const initialState = {
  isShowNav: false
}
export var showNavMobile = (state = initialState, action) => {
  switch (action.type) {
    case 'TOGGLE_SHOW_NAV':
      state.isShowNav = !state.isShowNav;
      return {...state}
    default:
        return state;
  }
};

export const getIsShowNav = state => state.nav.isShowNav;
