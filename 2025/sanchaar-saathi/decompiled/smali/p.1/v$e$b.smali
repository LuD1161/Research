.class public Lp/v$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp/v$e;->m(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lp/v$e;


# direct methods
.method public constructor <init>(Lp/v$e;)V
    .locals 0

    iput-object p1, p0, Lp/v$e$b;->c:Lp/v$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lp/v$e$b;->c:Lp/v$e;

    iget-object v1, v0, Lp/v$e;->O:Lp/v;

    invoke-virtual {v0, v1}, Lp/v$e;->U(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp/v$e$b;->c:Lp/v$e;

    invoke-virtual {v0}, Lp/Q;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lp/v$e$b;->c:Lp/v$e;

    invoke-virtual {v0}, Lp/v$e;->S()V

    iget-object v0, p0, Lp/v$e$b;->c:Lp/v$e;

    invoke-static {v0}, Lp/v$e;->R(Lp/v$e;)V

    :goto_0
    return-void
.end method
