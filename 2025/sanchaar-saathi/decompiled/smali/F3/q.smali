.class public final LF3/q;
.super LF3/e;
.source "SourceFile"

# interfaces
.implements LF3/r;


# direct methods
.method public constructor <init>(Ll3/i;LF3/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, LF3/e;-><init>(Ll3/i;LF3/d;ZZ)V

    return-void
.end method


# virtual methods
.method public Q0(Ljava/lang/Throwable;Z)V
    .locals 1

    invoke-virtual {p0}, LF3/e;->T0()LF3/d;

    move-result-object v0

    invoke-interface {v0, p1}, LF3/t;->o(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, LD3/a;->a()Ll3/i;

    move-result-object p2

    invoke-static {p2, p1}, LD3/H;->a(Ll3/i;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic R0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lh3/n;

    invoke-virtual {p0, p1}, LF3/q;->U0(Lh3/n;)V

    return-void
.end method

.method public U0(Lh3/n;)V
    .locals 2

    invoke-virtual {p0}, LF3/e;->T0()LF3/d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, LF3/t$a;->a(LF3/t;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-super {p0}, LD3/a;->b()Z

    move-result v0

    return v0
.end method
