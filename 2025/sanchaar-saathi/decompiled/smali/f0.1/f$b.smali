.class public abstract Lf0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Landroidx/datastore/preferences/protobuf/I;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/datastore/preferences/protobuf/r0$b;->o:Landroidx/datastore/preferences/protobuf/r0$b;

    sget-object v1, Landroidx/datastore/preferences/protobuf/r0$b;->q:Landroidx/datastore/preferences/protobuf/r0$b;

    invoke-static {}, Lf0/h;->Z()Lf0/h;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Landroidx/datastore/preferences/protobuf/I;->d(Landroidx/datastore/preferences/protobuf/r0$b;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/r0$b;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/I;

    move-result-object v0

    sput-object v0, Lf0/f$b;->a:Landroidx/datastore/preferences/protobuf/I;

    return-void
.end method
