.class public final synthetic LN2/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LN2/D;

.field public final synthetic f:LN2/F$c;

.field public final synthetic g:J

.field public final synthetic h:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(LN2/D;LN2/F$c;JLandroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN2/B;->e:LN2/D;

    iput-object p2, p0, LN2/B;->f:LN2/F$c;

    iput-wide p3, p0, LN2/B;->g:J

    iput-object p5, p0, LN2/B;->h:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LN2/B;->e:LN2/D;

    iget-object v1, p0, LN2/B;->f:LN2/F$c;

    iget-wide v2, p0, LN2/B;->g:J

    iget-object v4, p0, LN2/B;->h:Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2, v3, v4}, LN2/D;->c(LN2/D;LN2/F$c;JLandroid/view/KeyEvent;)V

    return-void
.end method
