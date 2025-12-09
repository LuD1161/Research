.class public final synthetic LN2/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LN2/D;

.field public final synthetic f:LN2/F$c;

.field public final synthetic g:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(LN2/D;LN2/F$c;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN2/C;->e:LN2/D;

    iput-object p2, p0, LN2/C;->f:LN2/F$c;

    iput-object p3, p0, LN2/C;->g:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LN2/C;->e:LN2/D;

    iget-object v1, p0, LN2/C;->f:LN2/F$c;

    iget-object v2, p0, LN2/C;->g:Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2}, LN2/D;->b(LN2/D;LN2/F$c;Landroid/view/KeyEvent;)V

    return-void
.end method
