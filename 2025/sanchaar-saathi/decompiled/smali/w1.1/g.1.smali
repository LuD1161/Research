.class public abstract Lw1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final c:Lw1/h;


# direct methods
.method public constructor <init>(Lw1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/g;->c:Lw1/h;

    return-void
.end method

.method public static c(Landroid/app/Activity;)Lw1/h;
    .locals 1

    new-instance v0, Lw1/f;

    invoke-direct {v0, p0}, Lw1/f;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lw1/g;->d(Lw1/f;)Lw1/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lw1/f;)Lw1/h;
    .locals 1

    invoke-virtual {p0}, Lw1/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw1/f;->d()Li0/u;

    move-result-object p0

    invoke-static {p0}, Lw1/f0;->E1(Li0/u;)Lw1/f0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lw1/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lw1/f;->c()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lw1/c0;->b(Landroid/app/Activity;)Lw1/c0;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get fragment for unexpected activity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lw1/g;->c:Lw1/h;

    invoke-interface {v0}, Lw1/h;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lz1/o;->f(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public abstract e(IILandroid/content/Intent;)V
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method
