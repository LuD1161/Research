.class public final Le3/I$l;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I;->c(Ljava/lang/String;ZLe3/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Le3/I;

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Le3/I;ZLl3/e;)V
    .locals 0

    iput-object p1, p0, Le3/I$l;->j:Ljava/lang/String;

    iput-object p2, p0, Le3/I$l;->k:Le3/I;

    iput-boolean p3, p0, Le3/I$l;->l:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Le3/I$l;->s(LD3/I;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 3

    new-instance p1, Le3/I$l;

    iget-object v0, p0, Le3/I$l;->j:Ljava/lang/String;

    iget-object v1, p0, Le3/I$l;->k:Le3/I;

    iget-boolean v2, p0, Le3/I$l;->l:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le3/I$l;-><init>(Ljava/lang/String;Le3/I;ZLl3/e;)V

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Le3/I$l;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lh3/i;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Le3/I$l;->j:Ljava/lang/String;

    invoke-static {p1}, Lg0/h;->a(Ljava/lang/String;)Lg0/f$a;

    move-result-object p1

    iget-object v1, p0, Le3/I$l;->k:Le3/I;

    invoke-static {v1}, Le3/I;->q(Le3/I;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "context"

    invoke-static {v1}, Lv3/l;->n(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-static {v1}, Le3/J;->a(Landroid/content/Context;)Lc0/h;

    move-result-object v1

    new-instance v4, Le3/I$l$a;

    iget-boolean v5, p0, Le3/I$l;->l:Z

    invoke-direct {v4, p1, v5, v3}, Le3/I$l$a;-><init>(Lg0/f$a;ZLl3/e;)V

    iput v2, p0, Le3/I$l;->i:I

    invoke-static {v1, v4, p0}, Lg0/i;->a(Lc0/h;Lu3/p;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final s(LD3/I;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le3/I$l;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Le3/I$l;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Le3/I$l;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
