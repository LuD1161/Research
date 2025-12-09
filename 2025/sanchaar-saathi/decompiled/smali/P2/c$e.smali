.class public LP2/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP2/c$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LP2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LM2/a;->e()LM2/a;

    move-result-object v0

    invoke-virtual {v0}, LM2/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, LP2/c$e;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(LY2/b$d;)LP2/c$d;
    .locals 1

    invoke-virtual {p1}, LY2/b$d;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LP2/c$h;

    iget-object v0, p0, LP2/c$e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0}, LP2/c$h;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object p1

    :cond_0
    new-instance p1, LP2/c$c;

    iget-object v0, p0, LP2/c$e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0}, LP2/c$c;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object p1
.end method
