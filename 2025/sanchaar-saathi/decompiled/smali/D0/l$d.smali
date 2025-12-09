.class public LD0/l$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:LD0/r;

.field public d:LD0/O;

.field public e:LD0/l;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;LD0/l;LD0/O;LD0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/l$d;->a:Landroid/view/View;

    iput-object p2, p0, LD0/l$d;->b:Ljava/lang/String;

    iput-object p5, p0, LD0/l$d;->c:LD0/r;

    iput-object p4, p0, LD0/l$d;->d:LD0/O;

    iput-object p3, p0, LD0/l$d;->e:LD0/l;

    return-void
.end method
