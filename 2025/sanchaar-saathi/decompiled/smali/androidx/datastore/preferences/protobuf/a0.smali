.class public final enum Landroidx/datastore/preferences/protobuf/a0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Landroidx/datastore/preferences/protobuf/a0;

.field public static final enum f:Landroidx/datastore/preferences/protobuf/a0;

.field public static final enum g:Landroidx/datastore/preferences/protobuf/a0;

.field public static final synthetic h:[Landroidx/datastore/preferences/protobuf/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/datastore/preferences/protobuf/a0;

    const-string v1, "PROTO2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/a0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/a0;->e:Landroidx/datastore/preferences/protobuf/a0;

    new-instance v1, Landroidx/datastore/preferences/protobuf/a0;

    const-string v2, "PROTO3"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/datastore/preferences/protobuf/a0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/datastore/preferences/protobuf/a0;->f:Landroidx/datastore/preferences/protobuf/a0;

    new-instance v2, Landroidx/datastore/preferences/protobuf/a0;

    const-string v3, "EDITIONS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/datastore/preferences/protobuf/a0;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/datastore/preferences/protobuf/a0;->g:Landroidx/datastore/preferences/protobuf/a0;

    filled-new-array {v0, v1, v2}, [Landroidx/datastore/preferences/protobuf/a0;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/a0;->h:[Landroidx/datastore/preferences/protobuf/a0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/a0;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/a0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/a0;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/a0;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/a0;->h:[Landroidx/datastore/preferences/protobuf/a0;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/a0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/a0;

    return-object v0
.end method
