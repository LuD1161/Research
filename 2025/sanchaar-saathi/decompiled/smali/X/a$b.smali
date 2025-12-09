.class public LX/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:LX/a;


# direct methods
.method public constructor <init>(LX/a;)V
    .locals 0

    iput-object p1, p0, LX/a$b;->e:LX/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LX/a$b;->e:LX/a;

    iget-boolean v1, v0, LX/a;->q:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, LX/a;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, LX/a;->o:Z

    iget-object v0, v0, LX/a;->c:LX/a$a;

    invoke-virtual {v0}, LX/a$a;->m()V

    :cond_1
    iget-object v0, p0, LX/a$b;->e:LX/a;

    iget-object v0, v0, LX/a;->c:LX/a$a;

    invoke-virtual {v0}, LX/a$a;->h()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, LX/a$b;->e:LX/a;

    invoke-virtual {v1}, LX/a;->u()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, LX/a$b;->e:LX/a;

    iget-boolean v3, v1, LX/a;->p:Z

    if-eqz v3, :cond_3

    iput-boolean v2, v1, LX/a;->p:Z

    invoke-virtual {v1}, LX/a;->c()V

    :cond_3
    invoke-virtual {v0}, LX/a$a;->a()V

    invoke-virtual {v0}, LX/a$a;->b()I

    move-result v1

    invoke-virtual {v0}, LX/a$a;->c()I

    move-result v0

    iget-object v2, p0, LX/a$b;->e:LX/a;

    invoke-virtual {v2, v1, v0}, LX/a;->j(II)V

    iget-object v0, p0, LX/a$b;->e:LX/a;

    iget-object v0, v0, LX/a;->e:Landroid/view/View;

    invoke-static {v0, p0}, LS/C;->Y(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, LX/a$b;->e:LX/a;

    iput-boolean v2, v0, LX/a;->q:Z

    return-void
.end method
