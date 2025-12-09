.class public Li0/p$b;
.super Li0/p$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li0/p;


# direct methods
.method public constructor <init>(Li0/p;)V
    .locals 0

    iput-object p1, p0, Li0/p$b;->a:Li0/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Li0/p$i;-><init>(Li0/p$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Li0/p$b;->a:Li0/p;

    iget-object v0, v0, Li0/p;->a0:Lx0/e;

    invoke-virtual {v0}, Lx0/e;->c()V

    iget-object v0, p0, Li0/p$b;->a:Li0/p;

    invoke-static {v0}, Landroidx/lifecycle/A;->a(Lx0/f;)V

    iget-object v0, p0, Li0/p$b;->a:Li0/p;

    iget-object v0, v0, Li0/p;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "registryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li0/p$b;->a:Li0/p;

    iget-object v1, v1, Li0/p;->a0:Lx0/e;

    invoke-virtual {v1, v0}, Lx0/e;->d(Landroid/os/Bundle;)V

    return-void
.end method
