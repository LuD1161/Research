.class public final Le3/I$q;
.super Ln3/k;
.source "SourceFile"

# interfaces
.implements Lu3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3/I;->b(Ljava/lang/String;Ljava/lang/String;Le3/H;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public i:I

.field public final synthetic j:Le3/I;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le3/I;Ljava/lang/String;Ljava/lang/String;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Le3/I$q;->j:Le3/I;

    iput-object p2, p0, Le3/I$q;->k:Ljava/lang/String;

    iput-object p3, p0, Le3/I$q;->l:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln3/k;-><init>(ILl3/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LD3/I;

    check-cast p2, Ll3/e;

    invoke-virtual {p0, p1, p2}, Le3/I$q;->s(LD3/I;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;Ll3/e;)Ll3/e;
    .locals 3

    new-instance p1, Le3/I$q;

    iget-object v0, p0, Le3/I$q;->j:Le3/I;

    iget-object v1, p0, Le3/I$q;->k:Ljava/lang/String;

    iget-object v2, p0, Le3/I$q;->l:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Le3/I$q;-><init>(Le3/I;Ljava/lang/String;Ljava/lang/String;Ll3/e;)V

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Le3/I$q;->i:I

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

    iget-object p1, p0, Le3/I$q;->j:Le3/I;

    iget-object v1, p0, Le3/I$q;->k:Ljava/lang/String;

    iget-object v3, p0, Le3/I$q;->l:Ljava/lang/String;

    iput v2, p0, Le3/I$q;->i:I

    invoke-static {p1, v1, v3, p0}, Le3/I;->p(Le3/I;Ljava/lang/String;Ljava/lang/String;Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method

.method public final s(LD3/I;Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le3/I$q;->j(Ljava/lang/Object;Ll3/e;)Ll3/e;

    move-result-object p1

    check-cast p1, Le3/I$q;

    sget-object p2, Lh3/n;->a:Lh3/n;

    invoke-virtual {p1, p2}, Le3/I$q;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
