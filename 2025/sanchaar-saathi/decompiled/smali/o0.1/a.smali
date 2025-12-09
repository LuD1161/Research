.class public abstract Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroidx/lifecycle/k;)Lo0/a;
    .locals 2

    new-instance v0, Lo0/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/I;

    invoke-interface {v1}, Landroidx/lifecycle/I;->t()Landroidx/lifecycle/H;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo0/b;-><init>(Landroidx/lifecycle/k;Landroidx/lifecycle/H;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method
