import requests
import bs4
import openpyxl

pcuoi = 5  # số trang cần quét
baseUrl = 'http://vppnguyenphuongonline.com/San-pham.html?pageSize=12&pageIndex='
selector = '.box-product .meta h3 a'

dsUrls = []

for idx in range(1, pcuoi + 1):
    reponse = requests.get(baseUrl + str(idx))
    soup = bs4.BeautifulSoup(reponse.text, 'lxml')

    # lấy tất cả thẻ a trong h3 trong .meta trong class box-product
    array_a = soup.select(selector)

    # duyệt qua từng thẻ a trong trang thứ idx -> lấy link -> thêm vào dsUrls
    for ael in array_a:
        dsUrls.append(ael['href'])

    wb = openpyxl.Workbook()
    sheet = wb.active
    sheet.title= "Danh sách sản phẩm "
    sheet['A1'] = "Tiêu đề"
    sheet['B1'] = "Mô tả"
    sheet['C1'] = "Nội dung"
    sheet['D1'] = "Giá"
    sheet['E1'] = "Ảnh"
    sheet['F1'] = "Danh mục"

# print(len(dsUrls))  # In ra số lượng link thu được

domain = 'http://vppnguyenphuongonline.com'
title_selector = '.product-detail h1.title'
description_short = '.description.short'
description = '.tab-detail .description'
breadcrumb = '.breadcrumb.pull-left li:nth-of-type(3)'
for index, url in enumerate(dsUrls):
    res = requests.get(domain + url)
    soupdetail = bs4.BeautifulSoup(res.text, 'lxml')
   # print(soupdetail.select_one(title_selector).text)
    sheet['A' + str(index +2)] = soupdetail.select_one(title_selector).text.replace('\n', ' ').replace('\r', '')
    sheet['B' +str(index +2)] = str(soupdetail.select_one(description_short))
    sheet['C' + str(index + 2)] = str(soupdetail.select_one(description))
    sheet['F' + str(index + 2)] = soupdetail.select_one(breadcrumb).text

    #xu ly anh
    img_link = soupdetail.find("meta", itemprop="image") ['content']
    img = requests.get(img_link)
    #xu ly luu
    f = open('vpptrimy.com_' + str(index) + '.jpg', 'wb')
    f.write(img.content)
    f.close()
    sheet['E' + str(index +2)] = 'vpptrimy.com_' + str(index) + '.jpg'


wb.save("sanpham.xlsx")