.class public LN2/E$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN2/E$c$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/KeyEvent;

.field public b:I

.field public c:Z

.field public final synthetic d:LN2/E;


# direct methods
.method public constructor <init>(LN2/E;Landroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, LN2/E$c;->d:LN2/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, LN2/E;->a:[LN2/E$d;

    array-length p1, p1

    iput p1, p0, LN2/E$c;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LN2/E$c;->c:Z

    iput-object p2, p0, LN2/E$c;->a:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public a()LN2/E$d$a;
    .locals 2

    new-instance v0, LN2/E$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LN2/E$c$a;-><init>(LN2/E$c;LN2/E$a;)V

    return-object v0
.end method
