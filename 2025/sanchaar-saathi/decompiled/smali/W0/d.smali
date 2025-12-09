.class public final LW0/d;
.super LW0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(LX0/h;)V
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

    invoke-virtual {p1}, LQ0/b;->d()LQ0/j;

    move-result-object p1

    sget-object v0, LQ0/j;->f:LQ0/j;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, LV0/b;

    invoke-virtual {p0, p1}, LW0/d;->i(LV0/b;)Z

    move-result p1

    return p1
.end method

.method public i(LV0/b;)Z
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LV0/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, LV0/b;->d()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
