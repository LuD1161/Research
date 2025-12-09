.class public Li0/I$d;
.super Li0/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Li0/I;


# direct methods
.method public constructor <init>(Li0/I;)V
    .locals 0

    iput-object p1, p0, Li0/I$d;->b:Li0/I;

    invoke-direct {p0}, Li0/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Li0/p;
    .locals 2

    iget-object p1, p0, Li0/I$d;->b:Li0/I;

    invoke-virtual {p1}, Li0/I;->v0()Li0/A;

    move-result-object p1

    iget-object v0, p0, Li0/I$d;->b:Li0/I;

    invoke-virtual {v0}, Li0/I;->v0()Li0/A;

    move-result-object v0

    invoke-virtual {v0}, Li0/A;->o()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Li0/w;->f(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Li0/p;

    move-result-object p1

    return-object p1
.end method
