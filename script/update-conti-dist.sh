# polyger title: 콘티 dist 파일 갱신
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