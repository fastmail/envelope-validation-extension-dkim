all: draft-bradshaw-envelope-validation-extension-dkim-00.txt draft-bradshaw-envelope-validation-extension-dkim-00.pdf

draft-bradshaw-envelope-validation-extension-dkim-00.txt: draft-bradshaw-envelope-validation-extension-dkim-00.xml
	xml2rfc draft-bradshaw-envelope-validation-extension-dkim-00.xml --no-dtd --v3 --text

draft-bradshaw-envelope-validation-extension-dkim-00.pdf: draft-bradshaw-envelope-validation-extension-dkim-00.xml
	xml2rfc draft-bradshaw-envelope-validation-extension-dkim-00.xml --no-dtd --v3 --pdf

draft-bradshaw-envelope-validation-extension-dkim-00.xml: draft-bradshaw-envelope-validation-extension-dkim-00.md
	kramdown-rfc -3 draft-bradshaw-envelope-validation-extension-dkim-00.md  > draft-bradshaw-envelope-validation-extension-dkim-00.xml

clean:
	rm draft-bradshaw-envelope-validation-extension-dkim-00.xml
	rm draft-bradshaw-envelope-validation-extension-dkim-00.txt
	rm draft-bradshaw-envelope-validation-extension-dkim-00.pdf


