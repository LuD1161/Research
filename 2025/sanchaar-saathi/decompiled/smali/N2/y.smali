.class public LN2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN2/E$d;


# instance fields
.field public final a:LX2/i;

.field public final b:LN2/E$b;


# direct methods
.method public constructor <init>(LX2/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN2/E$b;

    invoke-direct {v0}, LN2/E$b;-><init>()V

    iput-object v0, p0, LN2/y;->b:LN2/E$b;

    iput-object p1, p0, LN2/y;->a:LX2/i;

    return-void
.end method

.method public static synthetic b(LN2/E$d$a;Z)V
    .locals 0

    invoke-static {p0, p1}, LN2/y;->c(LN2/E$d$a;Z)V

    return-void
.end method

.method public static synthetic c(LN2/E$d$a;Z)V
    .locals 0

    invoke-interface {p0, p1}, LN2/E$d$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;LN2/E$d$a;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    invoke-interface {p2, v1}, LN2/E$d$a;->a(Z)V

    return-void

    :cond_0
    iget-object v3, p0, LN2/y;->b:LN2/E$b;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    invoke-virtual {v3, v4}, LN2/E$b;->a(I)Ljava/lang/Character;

    move-result-object v3

    new-instance v4, LX2/i$b;

    invoke-direct {v4, p1, v3}, LX2/i$b;-><init>(Landroid/view/KeyEvent;Ljava/lang/Character;)V

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iget-object p1, p0, LN2/y;->a:LX2/i;

    new-instance v0, LN2/x;

    invoke-direct {v0, p2}, LN2/x;-><init>(LN2/E$d$a;)V

    invoke-virtual {p1, v4, v1, v0}, LX2/i;->e(LX2/i$b;ZLX2/i$a;)V

    return-void
.end method
