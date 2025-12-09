.class public final LW0/b;
.super LW0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(LX0/c;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, LW0/c;-><init>(LX0/h;)V

    return-void
.end method


# virtual methods
.method public b(LZ0/u;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LZ0/u;->j:LQ0/b;

    invoke-virtual {p1}, LQ0/b;->f()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, LW0/b;->i(Z)Z

    move-result p1

    return p1
.end method

.method public i(Z)Z
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
