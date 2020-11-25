package sevices;

import models.SanPham;

import java.util.ArrayList;
import java.util.List;

public class MyService {
    public static List<SanPham> listSP = new ArrayList<>();

    static {
        listSP.add(new SanPham("ID01","Iphone9",2000));
        listSP.add(new SanPham("ID02","Iphone10",3000));
        listSP.add(new SanPham("ID03","Iphone11",4000));
    }
}
