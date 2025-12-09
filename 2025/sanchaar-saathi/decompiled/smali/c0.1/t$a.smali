.class public final Lc0/t$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc0/t;-><init>(LD3/I;Lu3/l;Lu3/p;Lu3/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lu3/l;

.field public final synthetic g:Lc0/t;

.field public final synthetic h:Lu3/p;


# direct methods
.method public constructor <init>(Lu3/l;Lc0/t;Lu3/p;)V
    .locals 0

    iput-object p1, p0, Lc0/t$a;->f:Lu3/l;

    iput-object p2, p0, Lc0/t$a;->g:Lc0/t;

    iput-object p3, p0, Lc0/t$a;->h:Lu3/p;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lc0/t$a;->f:Lu3/l;

    invoke-interface {v0, p1}, Lu3/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc0/t$a;->g:Lc0/t;

    invoke-static {v0}, Lc0/t;->b(Lc0/t;)LF3/d;

    move-result-object v0

    invoke-interface {v0, p1}, LF3/t;->o(Ljava/lang/Throwable;)Z

    :cond_0
    iget-object v0, p0, Lc0/t$a;->g:Lc0/t;

    invoke-static {v0}, Lc0/t;->b(Lc0/t;)LF3/d;

    move-result-object v0

    invoke-interface {v0}, LF3/s;->C()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LF3/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lc0/t$a;->h:Lu3/p;

    invoke-interface {v1, v0, p1}, Lu3/p;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lh3/n;->a:Lh3/n;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lc0/t$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh3/n;->a:Lh3/n;

    return-object p1
.end method
