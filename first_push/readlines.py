with open('text', 'r') as file:
        text = file.readlines()     #readline方法输出列表，文件的每一行为元素，行首行尾若有空格会显示及行尾的换行符会显示
        texts = [code.strip() for code in text]   #strip()方法可以去掉行首尾的空格、换行符。。。结果仍是列表
        print(texts)
	
