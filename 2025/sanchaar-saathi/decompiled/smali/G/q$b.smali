.class public LG/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LG/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LG/q;
    .locals 1

    new-instance v0, LG/q;

    invoke-direct {v0, p0}, LG/q;-><init>(LG/q$b;)V

    return-object v0
.end method

.method public b(Z)LG/q$b;
    .locals 0

    iput-boolean p1, p0, LG/q$b;->e:Z

    return-object p0
.end method

.method public c(Landroidx/core/graphics/drawable/IconCompat;)LG/q$b;
    .locals 0

    iput-object p1, p0, LG/q$b;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public d(Z)LG/q$b;
    .locals 0

    iput-boolean p1, p0, LG/q$b;->f:Z

    return-object p0
.end method

.method public e(Ljava/lang/String;)LG/q$b;
    .locals 0

    iput-object p1, p0, LG/q$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)LG/q$b;
    .locals 0

    iput-object p1, p0, LG/q$b;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public g(Ljava/lang/String;)LG/q$b;
    .locals 0

    iput-object p1, p0, LG/q$b;->c:Ljava/lang/String;

    return-object p0
.end method
