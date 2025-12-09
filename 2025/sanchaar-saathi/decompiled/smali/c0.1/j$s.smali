.class public final Lc0/j$s;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->B(Lu3/p;Ll3/i;Ll3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lc0/j;

.field public final synthetic l:Ll3/i;

.field public final synthetic m:Lu3/p;


# direct methods
.method public constructor <init>(Lc0/j;Ll3/i;Lu3/p;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$s;->k:Lc0/j;

    iput-object p2, p0, Lc0/j$s;->l:Ll3/i;

    iput-object p3, p0, Lc0/j$s;->m:Lu3/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll3/e;

    invoke-virtual {p0, p1}, Lc0/j$s;->t(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$s;->j:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lc0/j$s;->i:Ljava/lang/Object;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lc0/j$s;->i:Ljava/lang/Object;

    check-cast v1, Lc0/e;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lc0/j$s;->k:Lc0/j;

    iput v4, p0, Lc0/j$s;->j:I

    invoke-static {p1, v4, p0}, Lc0/j;->o(Lc0/j;ZLl3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    move-object v1, p1

    check-cast v1, Lc0/e;

    iget-object p1, p0, Lc0/j$s;->l:Ll3/i;

    new-instance v5, Lc0/j$s$a;

    iget-object v6, p0, Lc0/j$s;->m:Lu3/p;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v1, v7}, Lc0/j$s$a;-><init>(Lu3/p;Lc0/e;Ll3/e;)V

    iput-object v1, p0, Lc0/j$s;->i:Ljava/lang/Object;

    iput v3, p0, Lc0/j$s;->j:I

    invoke-static {p1, v5, p0}, LD3/g;->e(Ll3/i;Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    invoke-virtual {v1}, Lc0/e;->b()V

    invoke-virtual {v1}, Lc0/e;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lc0/j$s;->k:Lc0/j;

    iput-object p1, p0, Lc0/j$s;->i:Ljava/lang/Object;

    iput v2, p0, Lc0/j$s;->j:I

    invoke-virtual {v1, p1, v4, p0}, Lc0/j;->C(Ljava/lang/Object;ZLl3/e;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    :goto_2
    move-object p1, v0

    :cond_7
    return-object p1
.end method

.method public final s(Ll3/e;)Ll3/e;
    .locals 4

    new-instance v0, Lc0/j$s;

    iget-object v1, p0, Lc0/j$s;->k:Lc0/j;

    iget-object v2, p0, Lc0/j$s;->l:Ll3/i;

    iget-object v3, p0, Lc0/j$s;->m:Lu3/p;

    invoke-direct {v0, v1, v2, v3, p1}, Lc0/j$s;-><init>(Lc0/j;Ll3/i;Lu3/p;Ll3/e;)V

    return-object v0
.end method

.method public final t(Ll3/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lc0/j$s;->s(Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$s;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, v0}, Lc0/j$s;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
