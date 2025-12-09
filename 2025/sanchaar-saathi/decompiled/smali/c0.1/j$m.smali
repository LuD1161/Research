.class public final Lc0/j$m;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


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

.field public synthetic k:Z

.field public final synthetic l:Lc0/j;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Lc0/j;ILl3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$m;->l:Lc0/j;

    iput p2, p0, Lc0/j$m;->m:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Lc0/j$m;->s(ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 3

    new-instance v0, Lc0/j$m;

    iget-object v1, p0, Lc0/j$m;->l:Lc0/j;

    iget v2, p0, Lc0/j$m;->m:I

    invoke-direct {v0, v1, v2, p2}, Lc0/j$m;-><init>(Lc0/j;ILl3/e;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lc0/j$m;->k:Z

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$m;->j:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v0, p0, Lc0/j$m;->k:Z

    iget-object v1, p0, Lc0/j$m;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-boolean v1, p0, Lc0/j$m;->k:Z

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

    iget-boolean v1, p0, Lc0/j$m;->k:Z

    :try_start_1
    iget-object p1, p0, Lc0/j$m;->l:Lc0/j;

    iput-boolean v1, p0, Lc0/j$m;->k:Z

    iput v3, p0, Lc0/j$m;->j:I

    invoke-static {p1, v1, p0}, Lc0/j;->o(Lc0/j;ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lc0/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_1
    if-eqz v1, :cond_5

    iget-object v3, p0, Lc0/j$m;->l:Lc0/j;

    invoke-static {v3}, Lc0/j;->d(Lc0/j;)Lc0/n;

    move-result-object v3

    iput-object p1, p0, Lc0/j$m;->i:Ljava/lang/Object;

    iput-boolean v1, p0, Lc0/j$m;->k:Z

    iput v2, p0, Lc0/j$m;->j:I

    invoke-interface {v3, p0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move v0, v1

    move-object v1, p1

    move-object p1, v2

    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_3

    :cond_5
    iget v0, p0, Lc0/j$m;->m:I

    move v4, v1

    move-object v1, p1

    move p1, v0

    move v0, v4

    :goto_3
    new-instance v2, Lc0/q;

    invoke-direct {v2, v1, p1}, Lc0/q;-><init>(Ljava/lang/Throwable;I)V

    move v1, v0

    move-object p1, v2

    :goto_4
    invoke-static {v1}, Ln3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lh3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh3/g;

    move-result-object p1

    return-object p1
.end method

.method public final s(ZLl3/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lc0/j$m;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$m;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Lc0/j$m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
