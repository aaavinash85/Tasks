from flask import Flask, render_template, request
import os
from newspaper import Article
app = Flask(__name__)
port = int(os.getenv('PORT', 9000))

@app.route('/')
def index():
	return render_template('main.html')

@app.route('/sign')
def sign():
	return render_template('main.html')

@app.route('/process', methods=['POST'])
def process():
	a = request.form['url']
	article=Article(a , language="en")
	article.download()
	article.parse()
	txt=article.text
	sp=txt.split()
	ct=len(sp)
	

	return render_template('index.html', text=txt,count = ct)


if __name__ == '__main__':
	app.run(debug=True)
