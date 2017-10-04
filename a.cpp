#include<iostream>
#include<dirent.h>
#include<string>
#include<string.h>
#include<vector>
using namespace std;
class mp3file{
    public:
	string f_name;
	string f_path;
    
    void showfile(){
    	cout<<f_name;
    }
    void showpath(){
    	cout<<f_path;
    } 
    mp3file(char *filename,string path){
    	for(int i=0;i<strlen(filename);i++)
    		f_name.push_back(filename[i]);
    	f_path=path;
    }   
};
vector<mp3file> list;
class directory{
	public:
	DIR *dir;
	struct dirent *ent;
	directory(string s){
		dir=opendir(s.c_str());
	}
    bool isDir(){
    	if(ent->d_type==4)
    		return true;
    	else 
    		return false;
    }
    bool isMp3(){
    	if(ent->d_type==8){
    		string temp;
    		for(int i=strlen(ent->d_name)-4;i<strlen(ent->d_name);i++)
    			temp.push_back(ent->d_name[i]);
    		if(temp==".mp4")
    			return true;
    		else
    			return false;
        }
    	else
    	    return false;  			        
    	}	
};
void mp3find(string s){
	directory d(s);
	if(d.dir!=NULL){
		while((d.ent=readdir(d.dir))!=NULL){
			//skips the entities names '.','..' and '.*'
			if(strcmp(d.ent->d_name,".")==0 || strcmp(d.ent->d_name,"..")==0 || d.ent->d_name[0]=='.')
				continue;
			//checks for directory
			if(d.isDir()){
				string temp(d.ent->d_name);
				temp=s+"/"+temp;
				mp3find(temp);
			}
			//checks for mp3 file
			if(d.isMp3()){
				mp3file m(d.ent->d_name,s);
				
				list.push_back(m);               				        
			}	 
		}
		closedir(d.dir);
	}
}
int main(){
	mp3find(".");
	for(int i=0;i<list.size();i++)
		cout<<list[i].f_name<<"\t"<<list[i].f_path<<endl;	
}
