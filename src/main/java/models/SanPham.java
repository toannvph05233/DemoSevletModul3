package models;

public class SanPham {
    private String idSP;
    private String name;
    private float price;

    public SanPham() {
    }

    public SanPham(String idSP, String name, float price) {
        this.idSP = idSP;
        this.name = name;
        this.price = price;

    }

    public String getIdSP() {
        return idSP;
    }

    public void setIdSP(String idSP) {
        this.idSP = idSP;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

}
