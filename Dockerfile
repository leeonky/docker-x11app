FROM leeonky/os-dev:ubuntu

USER $USER_NAME

#RUN sudo apt-get install -y \
	#fcitx fcitx-libs fcitx-libs-qt libopencc1 dbus-x11 \
	#firefox

#input method and firefox
RUN sudo apt-get install -y \
	ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4 dbus-x11 ibus-pinyin\
	fonts-wqy-microhei \
	firefox

ADD setup_im.sh $USER_HOME/bin/setup_im.sh
RUN sudo chmod +x $USER_HOME/bin/setup_im.sh

