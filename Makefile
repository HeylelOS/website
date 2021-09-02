HVN_WEB=hvn-web

SUPDIR=support
SRCDIR=content
DESTDIR=www

.PHONY: all clean

all: \
	$(DESTDIR)/index.html \
	$(DESTDIR)/install.html \
	$(DESTDIR)/favicon.ico \
	$(DESTDIR)/style/style.css \
	$(DESTDIR)/images/background.svg \
	$(DESTDIR)/images/drive.png \
	$(DESTDIR)/images/icon.png \

clean:
	rm -rf $(DESTDIR)

$(DESTDIR):
	mkdir -p $@/style $@/images

$(DESTDIR)/%: $(SRCDIR)/% $(DESTDIR)
	cp $< $@

$(DESTDIR)/%.html: $(SRCDIR)/%.md $(SUPDIR)/head.html $(SUPDIR)/tail.html $(DESTDIR)
	$(HVN_WEB) -i $< -o $@ -H $(SUPDIR)/head.html -T $(SUPDIR)/tail.html

