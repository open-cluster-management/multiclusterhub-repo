cd $(dirname $0)

package_chart() 
{
  cd stable/*/ 
  PACKAGE="$(helm package ./)"
  find . -name '*tgz' | xargs -J% mv % ../../../
  cd ../../../../../
  echo "after" $PWD
}
echo "Fetching charts from SOURCE-REPO"
mkdir -p multicloudhub/charts
git submodule update --init --recursive
SUB_LIST="$(grep path .gitmodules | sed 's/.*= //')"
for submodule in ${SUB_LIST}; do
  echo ${submodule}
  mv ${submodule}  multicloudhub/charts
  cd "multicloudhub/charts/${submodule}"
  package_chart 
  rm -rf multicloudhub/charts/${submodule}
done
helm repo index multicloudhub/charts