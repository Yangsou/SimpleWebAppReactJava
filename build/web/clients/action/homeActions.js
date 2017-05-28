import actionTypes from '../contants/actionTypes';
import $ from 'jquery';
import cuid from 'cuid';

export function addOrder(order){
    return{
            type: actionTypes.ADD_ORDER,
            order
        };
}
export function addOrderById(idUser, idWatch){
    return function (dispatch){
        var id = cuid();
        $.post("api",
                {scan: 'add_order', id: id, idUser: idUser, idWatch: idWatch},
                (res) => {
                    var obj = {
                        id: id,
                        idUser: idUser,
                        idWatch: idWatch,
                        count: 1
                    };
                    dispatch(addOrder(obj)) ;
                }
        );
        
    };
};

export function addOrders(orders){
    return{
        type: 'ADD_ORDERS',
        orders
    };
}

export function fetchOrder(id){
    return function(dispatch){
        $.get("order", {scan: "getOrderByIdUser", idUser: id}, res => {
            dispatch(addOrders(res));    
        });
        
    };
}
//export function add

export function addPost(post){
  return{
    type: actionTypes.ADD_POST,
    post
  };
};

export function addPosts(posts){
  return{
    type: actionTypes.ADD_POSTS,
    posts
  };
};

export function getWatches(watches){
    return{
        type: actionTypes.ADD_WATCHES,
        watches
    };
}

export function fetchWatches(){
    return function(dispatch){
        $.get("api", {count: 'all'},(res) => {
            dispatch(getWatches(res));
        });
    };
};

export function fetchTypeWatches(){
//    return function(){
        return $.get("api", {count: 'categories'}, (res) => {
            return res;
        });
//    };
}

export function fetchWatchesByIdType(id){
    return $.get("api", {count: 'get_watches_by_id_type', id: id}, res => res);
}

export function fetchWatchesSale(limit){
    return $.get("api", {count: 'get_watches_sale', limit: limit}, res => res);
}

export function getWatchesById(id){
    return $.get("api", {count: 'get_watches_by_id', id: id}, res => res);
}

export function addWatchSearch(watch){
    return {
        type: 'ADD_WATCH_SEARCH',
        watch
    };
}
export function getWatchesByName(name){
    return function (dispatch){
        $.get("api", {count: 'get_watches_by_name', name: name}, res => {
            return dispatch(addWatchSearch(res));
        });
    };
}
export function addWatchType(watch){
    return{
        type: 'ADD_WATCH_TYPE',
        watch
    };
}
export function getWatchByType(id){
    return function (dispatch){
        return $.get("api", {count: 'get_watches_by_id_type', id: id}, res => {
            return dispatch(addWatchType(res));
        });
    };
}

export function addUser(user){
    return{
        type: actionTypes.CHECK_USER_LOGIN,
        user
    };
}

export function checkUserLogin(email, password){
       return $.post("api", {scan: 'check_user_login', email: email, password: password}, res => {
            return res;
        });
}

export function fetchUser(user){
    return function(dispatch){
        dispatch(addUser(user));
    };
}


export function saveCookiesLogin(token, idUser){
    return $.post("api", {scan: 'save_cookies', token: token, id: idUser}, res => res);
}

export function getUserByIdCookie(id){
    return function(dispatch){
        $.post("api", {scan: 'get_user_cookies', id: id}, res => {
            dispatch(addUser(res));
        });
    };
}

export function getUserById(id){
    return $.get("api", {scan: 'get_user_by_id', id: id}, res => res);
}