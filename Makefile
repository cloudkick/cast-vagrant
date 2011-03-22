CURRENT_DATE=`date +%Y-%m-%d`

package:
	echo "Creating box package: cast-${CURRENT_DATE}.box"
	vagrant package --vagrantfile Vagrantfile.pkg
	mv package.box cast-${CURRENT_DATE}.box

.PHONY: package
