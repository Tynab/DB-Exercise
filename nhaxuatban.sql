-- create
CREATE TABLE IF NOT EXISTS nhaxuatban(
    MaNXB nvarchar(10) primary key,
    TenNXB nvarchar(50),
    DiaChi nvarchar(50),
    SDT nvarchar(15)
);

-- view
select * from nhaxuatban;