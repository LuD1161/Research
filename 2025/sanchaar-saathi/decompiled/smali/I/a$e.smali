.class public final LI/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:LP/e;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(LP/e;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI/a$e;->a:LP/e;

    iput p2, p0, LI/a$e;->c:I

    iput p3, p0, LI/a$e;->b:I

    iput-object p4, p0, LI/a$e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LI/a$e;->c:I

    return v0
.end method

.method public b()LP/e;
    .locals 1

    iget-object v0, p0, LI/a$e;->a:LP/e;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LI/a$e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LI/a$e;->b:I

    return v0
.end method
