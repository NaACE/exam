package org.itstep;

public class Services {
    String name;
    String times;
    String price;

    public Services(String name, String time, String price) {
        this.name = name;
        this.times = time;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return times;
    }

    public void setTime(String time) {
        this.times = time;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
