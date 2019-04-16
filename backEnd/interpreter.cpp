#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <tuple>
/*
 * Author: Hanzhang Bai
 * Last updates at 15 Mar 2019
 * Copyright sxht4(2019) under MIT Licence
 */
std::vector<std::string> savedata;
std::vector<std::string> memAddr;
std::vector<std::tuple<std::string,std::string,std::string,std::string>> global;
using std::cout;
using std::endl;
int parse_add(){
return 0;
}
int parse_addi(std::vector<std::tuple<std::string,std::string,std::string,std::string>>& target){
    for(int i=0;i<target.size();i++){
        cout<<"?>?>?>?>?>?"<<std::get<1>(target[i])<<endl;
    }
return 0;
}
int parse_sub(){
return 0;
}
int outputFiles(std::string filePath){
return 0;
}
int main(int argc, char* argv[]){
if(argc!=3){
    cout<<"You must invoke this program with 2 arguments"<<endl;
    cout<<argv[0]<<" 'input_file_name' 'output_file_name'"<<endl;
    return 1;
}
cout<<"Interpreter, version 1"<<endl<<"Copyright, sxht4(2019)"<<endl;
cout<<"Reading files... ";
std::string filePath=argv[1];
std::ifstream infile(filePath);
std::string line;
std::vector<std::string> containers;
while (std::getline(infile, line)){
    containers.push_back(line);
}
cout<<"done"<<endl;
std::string action="", first_token="", second_token= "", third_token = "";
for(int i=0;i<containers.size();++i){
    cout<<containers[i]<<endl;
    action = containers[i].substr(0, containers[i].find(' '));
    if(action=="addi"){
    first_token = containers[i].substr(1, containers[i].find(' '));
    second_token = containers[i].substr(2, containers[i].find(' '));
    third_token = containers[i].substr(3, containers[i].find(' '));
    cout<<"action token '"<<action<<"', first token'"<<first_token<<"', second '"<<second_token<<"', third '"<<third_token<<"'"<<endl;
    global.push_back(std::make_tuple(action,first_token,second_token,third_token));
    parse_addi(global);
    }
    
}

}
