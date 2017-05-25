import React, {Component} from 'react';

class Footer extends Component{
  render(){
    return(
      <footer>
        <div className="footer padding">
            <div className="row">
                <div className="col-sm-3">
                  <h3 className="footer_title">Hỗ trợ khách hàng</h3>
                  <ul className="footer_lists">
                      <li>
                        <p className="red bold">Hot line: +84987654321</p>
                      </li>
                      <li><a href="#" className="list">Câu hỏi thường gặp</a></li>
                      <li><a href="#" className="list">Gửi yêu cầu hổ trợ</a></li>
                      <li><a href="#" className="list">Hướng dẫn đặt hàng</a></li>
                      <li><a href="#" className="list">Chính sách đổi trả</a></li>
                  </ul>
                </div>
                <div className="col-sm-3">
                    <h3 className="footer_title">Về WeWatch</h3>
                    <ul className="footer_lists">
                        <li><a href="#" className="list">Giới thiệu</a></li>
                        <li><a href="#" className="list">Tuyển dụng</a></li>
                        <li><a href="#" className="list">Chính sách bảo mật</a></li>
                        <li><a href="#" className="list">Điều khoản sử dụng</a></li>
                    </ul>
                </div>
                <div className="col-sm-3">
                    <h3 className="footer_title">Hợp tác và liên kết</h3>
                    <ul className="footer_lists">
                        <li><a href="#" className="list">Quy chế hoạt động sàn GDTMDT</a></li>
                        <li><a href="#" className="list">Cras ultricies ligula</a></li>
                        <li><a href="#" className="list">Cras ultricies ligula</a></li>
                        <li><a href="#" className="list">Cras ultricies ligula</a></li>
                    </ul>
                </div>
                <div className="col-sm-3">
                    <h3 className="footer_title">Phương thức thanh toán</h3>
                    <ul className="footer_lists">
                        <li className="list-img"><span><img src="assets/images/ic-visa.svg" alt=""/></span></li>
                        <li className="list-img"><span><img src="assets/images/ic-mastercard.svg" alt=""/></span></li>
                        <li className="list-img"><span><img src="assets/images/ic-jcb.svg" alt=""/></span></li>
                        <li className="list-img"><span><img src="assets/images/ic-cash.svg" alt=""/></span></li>
                        <li className="list-img"><span><img src="assets/images/ic-installment.svg" alt=""/></span></li>
                        <li className="list-img"><span><img src="assets/images/ic-internet-banking.svg" alt=""/></span></li>
                    </ul>
                </div>
            </div>
        </div>
        <hr className="divider divider-footer"/>
        <div className="container-fluid">
          <div className="row m-t-8">
            <p className="footer_cpright col-sm-6">WeWatch &copy; 2016. Allright reserved. Hình ảnh và dữ liệu từ jomashop</p>
            <div className="col-sm-6 pull-right footer_end-right">
                <a href="#">Term & Condition</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Site map</a>
            </div>
        </div>
        </div>
        
    </footer>
    );
  }
};

export default Footer;
