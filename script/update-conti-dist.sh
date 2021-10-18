# polyger title: [frontbook-conti] Update the conti dist file
# Please fill out the command you want below.

projectPath="${PWD}";
contiProject="${PWD}/frontend/frontbook-conti";
contiDist="${PWD}/frontend/frontbook-conti-dist";

cd "${contiProject}";
npm i;
npm run build;
npm run export;

cd "${contiDist}";
rm -rf "${contiDist}/out";

mkdir "${contiDist}/out";
cp -R "${contiProject}/out" "${contiDist}";