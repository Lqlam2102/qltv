package BUS;

import java.util.ArrayList;

import javax.swing.JOptionPane;

import DAL.DocGiaDAL;
import DTO.DocGia;
import DTO.TacGiaDTO;

public class DocGiaBUS {
	DocGiaDAL docgia = new DocGiaDAL();

	public static DocGiaBUS docgia1 = null;

	public static DocGiaBUS gI() {
		if (docgia1 == null) {
			docgia1 = new DocGiaBUS();
		}
		return docgia1;
	}
	public void showmess(String s) {
		JOptionPane.showMessageDialog(null, s);
	}
	public boolean isNumber(String s) {
		try {
			Integer.parseInt(s);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	public ArrayList<DocGia> getdanhsachdocgia() {

		return docgia.getdanhsachdocgia();
	}
	

	public int themdocgia(DocGia docgia) {
            
		if(docgia.getTenDocGia().isEmpty()) {
			showmess("Không được bỏ trống tên đọc giả");
			return -1;
		}
                if(docgia.getMSV().isEmpty()) {
			showmess("Không được bỏ trống mã sinh viên");
			return -1;
		}
                if(docgia.getMSV().equals(timdocgia(Integer.valueOf(docgia.getMSV())).getMSV())){
                        showmess("Sinh viên đã tồn tại trên hệ thống!");
			return -1;
                }
                if(!isNumber(docgia.getMSV()) || docgia.getMSV().length() <=9) {
			showmess("Mã sinh viên phải là số gôm 10 gồm mười chữ số");
			return -1;
		}
		if(docgia.getDiachi().isEmpty()) {
			showmess("Không được bỏ trống địa chỉ");
			return -1;
		}
		if(docgia.getSdt().isEmpty()) {
			showmess("Số điện thoại không được bỏ trống");
			return -1;
		}
                if(docgia.getSdt().equals(timdocgia(Integer.valueOf(docgia.getMSV())).getSdt())){
                        showmess("Cảnh báo! Số điện thoại đã tồn tại trên hệ thống!");
			return -1;
                }
		if(!isNumber(docgia.getSdt()) || docgia.getSdt().length() >11) {
			showmess("Số điện thoại không hợp lệ");
			return -1;
		}
		if(docgia.getGioiTinh().isEmpty()) {
			showmess("Giới tính không được bỏ trống");
			return -1;
		}
		if(DocGiaDAL.themdocgia(docgia) > 0 ) {
			showmess("Thêm độc giả thành công");
			return 1;
		}
		showmess("Thêm đọc giả thất bại");
		return -1;

	}

	public int suadocgia(DocGia docgia) {
		if(docgia.getTenDocGia().isEmpty()) {
			showmess("Không được bỏ trống tên đọc giả");
			return -1;
		}
                if(docgia.getMSV().isEmpty()) {
			showmess("Không được bỏ trống mã sinh viên");
			return -1;
		}
                if(docgia.getMSV().equals(timdocgia(Integer.valueOf(docgia.getMSV())).getMSV())){
                        showmess("Sinh viên đã tồn tại trên hệ thống!");
			return -1;
                }
                if(!isNumber(docgia.getMSV()) || docgia.getMSV().length() <=9) {
			showmess("Mã sinh viên phải là số gôm 10 gồm mười chữ số");
			return -1;
		}
		if(docgia.getDiachi().isEmpty()) {
			showmess("Không được bỏ trống địa chỉ");
			return -1;
		}
		if(docgia.getSdt().isEmpty()) {
			showmess("Số điện thoại không được bỏ trống");
			return -1;
		}
                if(docgia.getSdt().equals(timdocgia(Integer.valueOf(docgia.getMSV())).getSdt())){
                        showmess("Cảnh báo! Số điện thoại đã tồn tại trên hệ thống!");
			return -1;
                }
		if(!isNumber(docgia.getSdt()) || docgia.getSdt().length() >11) {
			showmess("Số điện thoại không hợp lệ");
			return -1;
		}
		if(docgia.getGioiTinh().isEmpty()) {
			showmess("Giới tính không được bỏ trống");
			return -1;
		}
		if(DocGiaDAL.suadocgia(docgia) > 0 ) {
			showmess("Sửa độc giả thành công");
			return 1;
		}
		showmess("Sửa đọc giả thất bại");
		return -1;
	}

	public int xoadocgia(DocGia docgia) {
		if(DocGiaDAL.xoadocgia(docgia) > 0 ) {
			showmess("Xoá độc giả thành công");
			return 1;
		}
		showmess("Xoá đọc giả thất bại");
		return -1;

	}

	public DocGia timdocgia(int ma) {
		return docgia.timdocgia(ma);
	}

}
