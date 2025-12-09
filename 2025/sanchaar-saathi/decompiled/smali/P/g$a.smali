.class public LP/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LP/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[LP/g$b;


# direct methods
.method public constructor <init>(I[LP/g$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LP/g$a;->a:I

    iput-object p2, p0, LP/g$a;->b:[LP/g$b;

    return-void
.end method

.method public static a(I[LP/g$b;)LP/g$a;
    .locals 1

    new-instance v0, LP/g$a;

    invoke-direct {v0, p0, p1}, LP/g$a;-><init>(I[LP/g$b;)V

    return-object v0
.end method


# virtual methods
.method public b()[LP/g$b;
    .locals 1

    iget-object v0, p0, LP/g$a;->b:[LP/g$b;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LP/g$a;->a:I

    return v0
.end method
