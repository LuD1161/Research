.class public final Lc0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LG3/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc0/z;->b:Lc0/z;

    const-string v1, "null cannot be cast to non-null type androidx.datastore.core.State<T of androidx.datastore.core.DataStoreInMemoryCache>"

    invoke-static {v0, v1}, Lv3/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LG3/t;->a(Ljava/lang/Object;)LG3/n;

    move-result-object v0

    iput-object v0, p0, Lc0/k;->a:LG3/n;

    return-void
.end method


# virtual methods
.method public final a()Lc0/v;
    .locals 1

    iget-object v0, p0, Lc0/k;->a:LG3/n;

    invoke-interface {v0}, LG3/n;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc0/v;

    return-object v0
.end method

.method public final b()LG3/d;
    .locals 1

    iget-object v0, p0, Lc0/k;->a:LG3/n;

    return-object v0
.end method

.method public final c(Lc0/v;)Lc0/v;
    .locals 5

    const-string v0, "newState"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc0/k;->a:LG3/n;

    :cond_0
    invoke-interface {v0}, LG3/n;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lc0/v;

    instance-of v3, v2, Lc0/q;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lc0/z;->b:Lc0/z;

    invoke-static {v2, v3}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    instance-of v3, v2, Lc0/e;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lc0/v;->a()I

    move-result v3

    invoke-virtual {v2}, Lc0/v;->a()I

    move-result v4

    if-le v3, v4, :cond_4

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_3
    instance-of v3, v2, Lc0/l;

    if-eqz v3, :cond_5

    :cond_4
    :goto_2
    invoke-interface {v0, v1, v2}, LG3/n;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_5
    new-instance p1, Lh3/f;

    invoke-direct {p1}, Lh3/f;-><init>()V

    throw p1
.end method
