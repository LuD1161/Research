.class public final LD3/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/k0;


# instance fields
.field public final e:LD3/A0;


# direct methods
.method public constructor <init>(LD3/A0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD3/j0;->e:LD3/A0;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()LD3/A0;
    .locals 1

    iget-object v0, p0, LD3/j0;->e:LD3/A0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
