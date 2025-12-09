.class public final Lc0/j$l;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->x(ZLl3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lc0/j;


# direct methods
.method public constructor <init>(Lc0/j;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$l;->k:Lc0/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll3/e;

    invoke-virtual {p0, p1}, Lc0/j$l;->t(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$l;->j:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lc0/j$l;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lc0/j$l;->k:Lc0/j;

    iput v3, p0, Lc0/j$l;->j:I

    invoke-static {p1, v3, p0}, Lc0/j;->o(Lc0/j;ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lc0/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    iget-object v1, p0, Lc0/j$l;->k:Lc0/j;

    invoke-static {v1}, Lc0/j;->d(Lc0/j;)Lc0/n;

    move-result-object v1

    iput-object p1, p0, Lc0/j$l;->i:Ljava/lang/Object;

    iput v2, p0, Lc0/j$l;->j:I

    invoke-interface {v1, p0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v1, Lc0/q;

    invoke-direct {v1, v0, p1}, Lc0/q;-><init>(Ljava/lang/Throwable;I)V

    move-object p1, v1

    :goto_3
    invoke-static {v3}, Ln3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ll3/e;)Ll3/e;
    .locals 2

    new-instance v0, Lc0/j$l;

    iget-object v1, p0, Lc0/j$l;->k:Lc0/j;

    invoke-direct {v0, v1, p1}, Lc0/j$l;-><init>(Lc0/j;Ll3/e;)V

    return-object v0
.end method

.method public final t(Ll3/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lc0/j$l;->s(Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$l;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, v0}, Lc0/j$l;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
