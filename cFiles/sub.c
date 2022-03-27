unsigned int sub(unsigned int x, unsigned int y)
{
    unsigned int ans = 100;
    ans = ans - x - y;
    unsigned int new = 5000 - ans;
    ans = new - ans;
    return(ans);
}