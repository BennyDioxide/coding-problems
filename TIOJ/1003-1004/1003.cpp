#pragma GCC optimize ("O3")
#include <bits/stdc++.h>

using namespace std;

int main() {
    ios::sync_with_stdio(false), cin.tie(nullptr), cout.tie(nullptr);
    uint16_t n, m = 1;
    for (cin >> n; n > 0; n--) {
        m += n;
    }
    cout << m << '\n';
    return 0;
}