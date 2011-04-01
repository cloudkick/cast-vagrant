CURRENT_DATE=`date +%Y-%m-%d`
FILENAME="cast-${CURRENT_DATE}.box"
CONTAINER='cast_vagrant_images'

package:
	echo "Creating box ${FILENAME}"
	vagrant package --vagrantfile Vagrantfile.pkg
	mv package.box ${FILENAME}

upload:
	./other/upload_to_cloudfiles.sh ${CF_USER} ${CF_API_KEY} ${CONTAINER} ${FILE}

.PHONY: package
