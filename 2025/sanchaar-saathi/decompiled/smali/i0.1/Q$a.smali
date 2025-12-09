.class public final Li0/Q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Li0/p;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/lifecycle/g$b;

.field public i:Landroidx/lifecycle/g$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILi0/p;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Li0/Q$a;->a:I

    .line 4
    iput-object p2, p0, Li0/Q$a;->b:Li0/p;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Li0/Q$a;->c:Z

    .line 6
    sget-object p1, Landroidx/lifecycle/g$b;->i:Landroidx/lifecycle/g$b;

    iput-object p1, p0, Li0/Q$a;->h:Landroidx/lifecycle/g$b;

    .line 7
    iput-object p1, p0, Li0/Q$a;->i:Landroidx/lifecycle/g$b;

    return-void
.end method

.method public constructor <init>(ILi0/p;Z)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Li0/Q$a;->a:I

    .line 10
    iput-object p2, p0, Li0/Q$a;->b:Li0/p;

    .line 11
    iput-boolean p3, p0, Li0/Q$a;->c:Z

    .line 12
    sget-object p1, Landroidx/lifecycle/g$b;->i:Landroidx/lifecycle/g$b;

    iput-object p1, p0, Li0/Q$a;->h:Landroidx/lifecycle/g$b;

    .line 13
    iput-object p1, p0, Li0/Q$a;->i:Landroidx/lifecycle/g$b;

    return-void
.end method
