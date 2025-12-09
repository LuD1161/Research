.class public final Lp2/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp2/e;


# instance fields
.field public final a:Lp2/E;

.field public final b:Lq2/g;

.field public final c:Lq2/g;

.field public final d:Lq2/g;

.field public final e:Lq2/g;

.field public final f:Lq2/g;

.field public final g:Lq2/g;


# direct methods
.method public synthetic constructor <init>(Lp2/n;Lp2/D;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lp2/E;->a:Lp2/E;

    new-instance p2, Lp2/p;

    invoke-direct {p2, p1}, Lp2/p;-><init>(Lp2/n;)V

    iput-object p2, p0, Lp2/E;->b:Lq2/g;

    new-instance p1, Lp2/z;

    invoke-direct {p1, p2}, Lp2/z;-><init>(Lq2/g;)V

    invoke-static {p1}, Lq2/e;->b(Lq2/g;)Lq2/g;

    move-result-object p1

    iput-object p1, p0, Lp2/E;->c:Lq2/g;

    new-instance v0, Lp2/x;

    invoke-direct {v0, p2, p1}, Lp2/x;-><init>(Lq2/g;Lq2/g;)V

    invoke-static {v0}, Lq2/e;->b(Lq2/g;)Lq2/g;

    move-result-object p1

    iput-object p1, p0, Lp2/E;->d:Lq2/g;

    new-instance v0, Lp2/j;

    invoke-direct {v0, p2}, Lp2/j;-><init>(Lq2/g;)V

    invoke-static {v0}, Lq2/e;->b(Lq2/g;)Lq2/g;

    move-result-object v0

    iput-object v0, p0, Lp2/E;->e:Lq2/g;

    new-instance v1, Lp2/m;

    invoke-direct {v1, p1, v0, p2}, Lp2/m;-><init>(Lq2/g;Lq2/g;Lq2/g;)V

    invoke-static {v1}, Lq2/e;->b(Lq2/g;)Lq2/g;

    move-result-object p1

    iput-object p1, p0, Lp2/E;->f:Lq2/g;

    new-instance p2, Lp2/o;

    invoke-direct {p2, p1}, Lp2/o;-><init>(Lq2/g;)V

    invoke-static {p2}, Lq2/e;->b(Lq2/g;)Lq2/g;

    move-result-object p1

    iput-object p1, p0, Lp2/E;->g:Lq2/g;

    return-void
.end method


# virtual methods
.method public final a()Lp2/b;
    .locals 1

    iget-object v0, p0, Lp2/E;->g:Lq2/g;

    invoke-interface {v0}, Lq2/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/b;

    return-object v0
.end method
