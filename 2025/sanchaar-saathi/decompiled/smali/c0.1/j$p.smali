.class public final Lc0/j$p;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/j;->z(ZLl3/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lv3/w;

.field public final synthetic l:Lc0/j;

.field public final synthetic m:Lv3/u;


# direct methods
.method public constructor <init>(Lv3/w;Lc0/j;Lv3/u;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Lc0/j$p;->k:Lv3/w;

    iput-object p2, p0, Lc0/j$p;->l:Lc0/j;

    iput-object p3, p0, Lc0/j$p;->m:Lv3/u;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ll3/e;

    invoke-virtual {p0, p1}, Lc0/j$p;->t(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lc0/j$p;->j:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lc0/j$p;->i:Ljava/lang/Object;

    check-cast v0, Lv3/u;

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lc0/j$p;->i:Ljava/lang/Object;

    check-cast v1, Lv3/u;

    :try_start_0
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lc0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lc0/j$p;->i:Ljava/lang/Object;

    check-cast v1, Lv3/w;

    :try_start_1
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lc0/c; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    :try_start_2
    iget-object v1, p0, Lc0/j$p;->k:Lv3/w;

    iget-object p1, p0, Lc0/j$p;->l:Lc0/j;

    iput-object v1, p0, Lc0/j$p;->i:Ljava/lang/Object;

    iput v4, p0, Lc0/j$p;->j:I

    invoke-static {p1, p0}, Lc0/j;->n(Lc0/j;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    iput-object p1, v1, Lv3/w;->e:Ljava/lang/Object;

    iget-object v1, p0, Lc0/j$p;->m:Lv3/u;

    iget-object p1, p0, Lc0/j$p;->l:Lc0/j;

    invoke-static {p1}, Lc0/j;->d(Lc0/j;)Lc0/n;

    move-result-object p1

    iput-object v1, p0, Lc0/j$p;->i:Ljava/lang/Object;

    iput v3, p0, Lc0/j$p;->j:I

    invoke-interface {p1, p0}, Lc0/n;->a(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v1, Lv3/u;->e:I
    :try_end_2
    .catch Lc0/c; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    iget-object p1, p0, Lc0/j$p;->m:Lv3/u;

    iget-object v1, p0, Lc0/j$p;->l:Lc0/j;

    iget-object v3, p0, Lc0/j$p;->k:Lv3/w;

    iget-object v3, v3, Lv3/w;->e:Ljava/lang/Object;

    iput-object p1, p0, Lc0/j$p;->i:Ljava/lang/Object;

    iput v2, p0, Lc0/j$p;->j:I

    invoke-virtual {v1, v3, v4, p0}, Lc0/j;->C(Ljava/lang/Object;ZLl3/e;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Lv3/u;->e:I

    :goto_3
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final s(Ll3/e;)Ll3/e;
    .locals 4

    new-instance v0, Lc0/j$p;

    iget-object v1, p0, Lc0/j$p;->k:Lv3/w;

    iget-object v2, p0, Lc0/j$p;->l:Lc0/j;

    iget-object v3, p0, Lc0/j$p;->m:Lv3/u;

    invoke-direct {v0, v1, v2, v3, p1}, Lc0/j$p;-><init>(Lv3/w;Lc0/j;Lv3/u;Ll3/e;)V

    return-object v0
.end method

.method public final t(Ll3/e;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lc0/j$p;->s(Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Lc0/j$p;

    sget-object v0, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, v0}, Lc0/j$p;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
