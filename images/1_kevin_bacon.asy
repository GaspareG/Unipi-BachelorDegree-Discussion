import graph;
import stats;

size(400,200,IgnoreAspect);

int n=6, sum=0;
int[] f=new int[n];
//sum += f[0] = 1;
//sum += f[1] = 3355;
//sum += f[2] = 387490;
//sum += f[3] = 1190474;
//sum += f[4] = 204803;
//sum += f[5] = 10830;
//sum += f[6] = 989;

sum += f[0] = 1;
sum += f[1] = 3355;
sum += f[2] = 390845;
sum += f[3] = 1581319;
sum += f[4] = 1786122;
sum += f[5] = 1796952;
sum += f[6] = 1797941;


int idx=-1;
int[] a = new int[sum];
for(int i=0; i <= 6; ++i)
{
    for(int j=0; j<f[i]; ++j)
        a[++idx] = i;    
}

// Optionally calculate "optimal" number of bins a la Shimazaki and Shinomoto.
int N=6; //bins(a);

histogram(a,min(a),max(a),N,normalize=true,low=0,rgb(0.43,0.5176, 0.7098),black,bars=false);

//e:	#6E84B5
//RGB codice:	R: 110 G: 132 B: 181

xaxis("degrees of separation",BottomTop,LeftTicks);
yaxis("Actor's \%",LeftRight,RightTicks(trailingzero));

